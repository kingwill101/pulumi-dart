// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityProfile.
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

  GetSecurityProfileArgs({
    required this.instanceId,
    this.name,
    this.region,
    this.securityProfileId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityProfileIdValue = securityProfileId;
    if (securityProfileIdValue != null) {
      map['securityProfileId'] = securityProfileIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityProfileId:
          pulumi.Input.asOptionalInput<String>(map['securityProfileId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
