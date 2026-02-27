// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_filter/get_instance_filter.dart';

/// Arguments for getInstance.
class GetInstanceArgs2 {
  /// One or more filters to apply to the search.
  /// If multiple `filter` blocks are provided, they all must be true.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  /// See `filter` Block below.
  final Input<List<GetInstanceFilter>>? filters;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final Input<bool>? getPasswordData;

  /// Retrieve Base64 encoded User Data contents into the `user_data_base64` attribute. A SHA-1 hash of the User Data contents will always be present in the `user_data` attribute. Defaults to `false`.
  ///
  /// > **NOTE:** At least one of `filter`, `instance_tags`, or `instance_id` must be specified.
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
