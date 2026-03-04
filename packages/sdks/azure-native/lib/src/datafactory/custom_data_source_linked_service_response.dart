// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Custom linked service.
class CustomDataSourceLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// Type of linked service.
  /// Expected value is 'CustomDataSource'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [CustomDataSourceLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  CustomDataSourceLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.description,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
      'version': ?version,
    };
  }

  factory CustomDataSourceLinkedServiceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomDataSourceLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
