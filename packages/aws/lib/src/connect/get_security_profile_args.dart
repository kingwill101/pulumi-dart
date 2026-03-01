// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_security_profile_get_security_profile_args_doc}
/// Arguments for getSecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_connect_get_security_profile_get_security_profile_args_doc}
class GetSecurityProfileArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Security Profile by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `security_profile_id` is required.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Returns information on a specific Security Profile by Security Profile id
  final pulumi.Input<String>? securityProfileId;

  /// Map of tags to assign to the Security Profile.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecurityProfileArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Security Profile by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityProfileId] Returns information on a specific Security Profile by Security Profile id
  /// [tags] Map of tags to assign to the Security Profile.
  GetSecurityProfileArgs({
    required String instanceId,
    String? name,
    String? region,
    String? securityProfileId,
    Map<String, String>? tags,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityProfileId = pulumi.Input.asOptionalInput<String>(
         securityProfileId,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'securityProfileId': ?securityProfileId,
      'tags': ?tags,
    };
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityProfileId: map['securityProfileId'] == null
          ? null
          : map['securityProfileId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
