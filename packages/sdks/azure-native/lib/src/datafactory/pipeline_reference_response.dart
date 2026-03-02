// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline reference type.
class PipelineReferenceResponse {
  /// Reference name.
  final pulumi.Input<String>? name;
  /// Reference pipeline name.
  final pulumi.Input<String> referenceName;
  /// Pipeline reference type.
  final pulumi.Input<String> type;

  /// Creates a new [PipelineReferenceResponse].
  /// [name] Reference name.
  /// [referenceName] Reference pipeline name.
  /// [type] Pipeline reference type.
  PipelineReferenceResponse({
    this.name,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory PipelineReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PipelineReferenceResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      referenceName: (map['referenceName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

