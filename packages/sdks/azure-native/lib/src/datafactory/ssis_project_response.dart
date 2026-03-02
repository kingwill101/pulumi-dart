// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssis_environment_reference_response.dart';
import 'ssis_parameter_response.dart';

/// Ssis project.
class SsisProjectResponse {
  /// Metadata description.
  final pulumi.Input<String>? description;
  /// Environment reference in project
  final pulumi.Input<List<SsisEnvironmentReferenceResponse>>? environmentRefs;
  /// Folder id which contains project.
  final pulumi.Input<double>? folderId;
  /// Metadata id.
  final pulumi.Input<double>? id;
  /// Metadata name.
  final pulumi.Input<String>? name;
  /// Parameters in project
  final pulumi.Input<List<SsisParameterResponse>>? parameters;
  /// The type of SSIS object metadata.
  /// Expected value is 'Project'.
  final pulumi.Input<String> type;
  /// Project version.
  final pulumi.Input<double>? version;

  /// Creates a new [SsisProjectResponse].
  /// [description] Metadata description.
  /// [environmentRefs] Environment reference in project
  /// [folderId] Folder id which contains project.
  /// [id] Metadata id.
  /// [name] Metadata name.
  /// [parameters] Parameters in project
  /// [type] The type of SSIS object metadata.
  /// [version] Project version.
  SsisProjectResponse({
    this.description,
    this.environmentRefs,
    this.folderId,
    this.id,
    this.name,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentRefs': ?pulumi.Input.mapOptionalInputValue<List<SsisEnvironmentReferenceResponse>, List<Map<String, dynamic>>>(environmentRefs, (value) => pulumi.Input.encodeList<SsisEnvironmentReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'folderId': ?folderId,
      'id': ?id,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<SsisParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SsisParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
    };
  }

  factory SsisProjectResponse.fromMap(Map<String, dynamic> map) {
    return SsisProjectResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      environmentRefs: map['environmentRefs'] == null ? null : (pulumi.Input.decodeList<SsisEnvironmentReferenceResponse>(map['environmentRefs'], (value) => SsisEnvironmentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as double).input(),
      id: map['id'] == null ? null : (map['id'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<SsisParameterResponse>(map['parameters'], (value) => SsisParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as double).input(),
    );
  }
}

