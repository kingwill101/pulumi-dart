// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_attribute_binding_args_doc}
/// Arguments for getDataAttributeBinding.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_attribute_binding_args_doc}
class GetDataAttributeBindingArgs {
  final pulumi.Input<String> dataAttributeBindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataAttributeBindingArgs].
  /// [dataAttributeBindingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataAttributeBindingArgs({
    required String dataAttributeBindingId,
    required String location,
    String? project,
  }) :
      dataAttributeBindingId = pulumi.Input.asInput<String>(dataAttributeBindingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAttributeBindingId': dataAttributeBindingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataAttributeBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetDataAttributeBindingArgs(
      dataAttributeBindingId: map['dataAttributeBindingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

