// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_filter/get_instance_filter.dart';

/// Arguments for getInstance.
class GetInstanceArgs2 {
  /// One or more filters to apply to the search.
  /// If multiple <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> blocks are provided, they all must be true.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  /// See <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> Block below.
  final Input<List<GetInstanceFilter>>? filters;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the <span pulumi-lang-nodejs="`passwordData`" pulumi-lang-dotnet="`PasswordData`" pulumi-lang-go="`passwordData`" pulumi-lang-python="`password_data`" pulumi-lang-yaml="`passwordData`" pulumi-lang-java="`passwordData`">`password_data`</span> attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final Input<bool>? getPasswordData;

  /// Retrieve Base64 encoded User Data contents into the <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> attribute. A SHA-1 hash of the User Data contents will always be present in the <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> attribute. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// > **NOTE:** At least one of <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span>, <span pulumi-lang-nodejs="`instanceTags`" pulumi-lang-dotnet="`InstanceTags`" pulumi-lang-go="`instanceTags`" pulumi-lang-python="`instance_tags`" pulumi-lang-yaml="`instanceTags`" pulumi-lang-java="`instanceTags`">`instance_tags`</span>, or <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> must be specified.
  ///
  /// > **NOTE:** If anything other than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single Instance ID only.
  final Input<bool>? getUserData;

  /// Specify the exact Instance ID with which to populate the data source.
  final Input<String>? instanceId;

  /// Map of tags, each pair of which must
  /// exactly match a pair on the desired Instance.
  final Input<Map<String, String>>? instanceTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the Instance.
  final Input<Map<String, String>>? tags;

  GetInstanceArgs2({
    this.filters,
    this.getPasswordData,
    this.getUserData,
    this.instanceId,
    this.instanceTags,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetInstanceFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final getPasswordDataValue = getPasswordData;
    if (getPasswordDataValue != null) {
      map['getPasswordData'] = getPasswordDataValue;
    }
    final getUserDataValue = getUserData;
    if (getUserDataValue != null) {
      map['getUserData'] = getUserDataValue;
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final instanceTagsValue = instanceTags;
    if (instanceTagsValue != null) {
      map['instanceTags'] = instanceTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetInstanceArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs2(
      filters: Input.asOptionalInput<List<GetInstanceFilter>>(map['filters']),
      getPasswordData: Input.asOptionalInput<bool>(map['getPasswordData']),
      getUserData: Input.asOptionalInput<bool>(map['getUserData']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      instanceTags:
          Input.asOptionalInput<Map<String, String>>(map['instanceTags']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
