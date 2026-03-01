// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_filter.dart';

/// {@template pulumi_ec2_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_instance_get_instance_args_doc}
class GetInstanceArgs {
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

  /// Creates a new [GetInstanceArgs].
  /// [filters] One or more filters to apply to the search.
  /// [getPasswordData] If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  /// [getUserData] Retrieve Base64 encoded User Data contents into the `user_data_base64` attribute. A SHA-1 hash of the User Data contents will always be present in the `user_data` attribute. Defaults to `false`.
  /// [instanceId] Specify the exact Instance ID with which to populate the data source.
  /// [instanceTags] Map of tags, each pair of which must
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the Instance.
  GetInstanceArgs({
    List<GetInstanceFilter>? filters,
    bool? getPasswordData,
    bool? getUserData,
    String? instanceId,
    Map<String, String>? instanceTags,
    String? region,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetInstanceFilter>>(filters),
      getPasswordData = pulumi.Input.asOptionalInput<bool>(getPasswordData),
      getUserData = pulumi.Input.asOptionalInput<bool>(getUserData),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceTags = pulumi.Input.asOptionalInput<Map<String, String>>(instanceTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInstanceFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInstanceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'getPasswordData': ?getPasswordData,
      'getUserData': ?getUserData,
      'instanceId': ?instanceId,
      'instanceTags': ?instanceTags,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetInstanceFilter>(map['filters'], (value) => GetInstanceFilter.fromMap((value as Map).cast<String, dynamic>())),
      getPasswordData: map['getPasswordData'] == null ? null : map['getPasswordData'] as bool,
      getUserData: map['getUserData'] == null ? null : map['getUserData'] as bool,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceTags: map['instanceTags'] == null ? null : (map['instanceTags'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

