// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_kmsconfig_kmsconfig_args_doc}
/// The set of arguments for Kmsconfig.
/// {@endtemplate}
/// {@macro pulumi_netapp_kmsconfig_kmsconfig_args_doc}
class KmsconfigArgs {
  /// Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  final pulumi.Input<String> cryptoKeyName;

  /// Description for the CMEK policy.
  final pulumi.Input<String>? description;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the policy location. CMEK policies apply to the whole region.
  final pulumi.Input<String> location;

  /// Name of the CMEK policy.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [KmsconfigArgs].
  /// [cryptoKeyName] Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  /// [description] Description for the CMEK policy.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the policy location. CMEK policies apply to the whole region.
  /// [name] Name of the CMEK policy.
  /// [project] The ID of the project in which the resource belongs.
  KmsconfigArgs({
    required String cryptoKeyName,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  })  : cryptoKeyName = pulumi.Input.asInput<String>(cryptoKeyName),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyName'] = cryptoKeyName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
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
    return map;
  }

  factory KmsconfigArgs.fromMap(Map<String, dynamic> map) {
    return KmsconfigArgs(
      cryptoKeyName: map['cryptoKeyName'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
