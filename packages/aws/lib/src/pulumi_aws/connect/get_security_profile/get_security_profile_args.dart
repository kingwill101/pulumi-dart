// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecurityProfile.
class GetSecurityProfileArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Security Profile by name
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`securityProfileId`" pulumi-lang-dotnet="`SecurityProfileId`" pulumi-lang-go="`securityProfileId`" pulumi-lang-python="`security_profile_id`" pulumi-lang-yaml="`securityProfileId`" pulumi-lang-java="`securityProfileId`">`security_profile_id`</span> is required.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Returns information on a specific Security Profile by Security Profile id
  final Input<String>? securityProfileId;

  /// Map of tags to assign to the Security Profile.
  final Input<Map<String, String>>? tags;

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
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      securityProfileId:
          Input.asOptionalInput<String>(map['securityProfileId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
