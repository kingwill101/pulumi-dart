// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_filter/get_instance_filter.dart';

/// Arguments for getInstance.
class GetInstanceEc2Args {
  /// One or more filters to apply to the search.
  /// If multiple `filter` blocks are provided, they all must be true.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  /// See `filter` Block below.
  final pulumi.Input<List<GetInstanceFilter>>? filters;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final pulumi.Input<bool>? getPasswordData;

  /// Retrieve Base64 encoded User Data contents into the `user_data_base64` attribute. A SHA-1 hash of the User Data contents will always be present in the `user_data` attribute. Defaults to `false`.
  ///
  /// > **NOTE:** At least one of `filter`, `instance_tags`, or `instance_id` must be specified.
  ///
  /// > **NOTE:** If anything other than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single Instance ID only.
  final pulumi.Input<bool>? getUserData;

  /// Specify the exact Instance ID with which to populate the data source.
  final pulumi.Input<String>? instanceId;

  /// Map of tags, each pair of which must
  /// exactly match a pair on the desired Instance.
  final pulumi.Input<Map<String, String>>? instanceTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the Instance.
  final pulumi.Input<Map<String, String>>? tags;

  GetInstanceEc2Args({
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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInstanceFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(
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

  factory GetInstanceEc2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceEc2Args(
      filters:
          pulumi.Input.asOptionalInput<List<GetInstanceFilter>>(map['filters']),
      getPasswordData:
          pulumi.Input.asOptionalInput<bool>(map['getPasswordData']),
      getUserData: pulumi.Input.asOptionalInput<bool>(map['getUserData']),
      instanceId: pulumi.Input.asOptionalInput<String>(map['instanceId']),
      instanceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['instanceTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
