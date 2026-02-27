// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GoogleChannelConfig.
class GoogleChannelConfigArgs {
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GoogleChannelConfigArgs({
    this.cryptoKeyName,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyNameValue = cryptoKeyName;
    if (cryptoKeyNameValue != null) {
      map['cryptoKeyName'] = cryptoKeyNameValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GoogleChannelConfigArgs.fromMap(Map<String, dynamic> map) {
    return GoogleChannelConfigArgs(
      cryptoKeyName: pulumi.Input.asOptionalInput<String>(map['cryptoKeyName']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
