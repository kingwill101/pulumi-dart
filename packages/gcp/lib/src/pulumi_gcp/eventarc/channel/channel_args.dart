// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Channel.
class ChannelArgs {
  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;

  /// User-defined labels for the channel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The resource name of the channel. Must be unique within the location on the project.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  final pulumi.Input<String>? thirdPartyProvider;

  ChannelArgs({
    this.cryptoKeyName,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.thirdPartyProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyNameValue = cryptoKeyName;
    if (cryptoKeyNameValue != null) {
      map['cryptoKeyName'] = cryptoKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final thirdPartyProviderValue = thirdPartyProvider;
    if (thirdPartyProviderValue != null) {
      map['thirdPartyProvider'] = thirdPartyProviderValue;
    }
    return map;
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      cryptoKeyName: pulumi.Input.asOptionalInput<String>(map['cryptoKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      thirdPartyProvider:
          pulumi.Input.asOptionalInput<String>(map['thirdPartyProvider']),
    );
  }
}
