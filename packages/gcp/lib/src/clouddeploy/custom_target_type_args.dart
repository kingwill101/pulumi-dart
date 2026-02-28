// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_custom_actions.dart';

/// {@template pulumi_clouddeploy_custom_target_type_custom_target_type_args_doc}
/// The set of arguments for CustomTargetType.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_custom_target_type_custom_target_type_args_doc}
class CustomTargetTypeArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeCustomActions>? customActions;
  /// Description of the `CustomTargetType`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the source.
  final pulumi.Input<String> location;
  /// Name of the `CustomTargetType`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CustomTargetTypeArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [customActions] Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// [description] Description of the `CustomTargetType`. Max length is 255 characters.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location of the source.
  /// [name] Name of the `CustomTargetType`.
  /// [project] The ID of the project in which the resource belongs.
  CustomTargetTypeArgs({
    Map<String, String>? annotations,
    CustomTargetTypeCustomActions? customActions,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      customActions = pulumi.Input.asOptionalInput<CustomTargetTypeCustomActions>(customActions),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'customActions': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeCustomActions, Map<String, dynamic>>(customActions, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CustomTargetTypeArgs.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      customActions: map['customActions'] == null ? null : CustomTargetTypeCustomActions.fromMap((map['customActions'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

