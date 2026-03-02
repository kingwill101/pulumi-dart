// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_solution_template_version_response.dart';

/// Solution Properties
class SolutionPropertiesResponse {
  /// List of latest revisions for available solution template versions
  final pulumi.Input<List<AvailableSolutionTemplateVersionResponse>> availableSolutionTemplateVersions;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Solution template Id
  final pulumi.Input<String> solutionTemplateId;

  /// Creates a new [SolutionPropertiesResponse].
  /// [availableSolutionTemplateVersions] List of latest revisions for available solution template versions
  /// [provisioningState] Provisioning state of resource
  /// [solutionTemplateId] Solution template Id
  SolutionPropertiesResponse({
    required this.availableSolutionTemplateVersions,
    required this.provisioningState,
    required this.solutionTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSolutionTemplateVersions': pulumi.Input.mapInputValue<List<AvailableSolutionTemplateVersionResponse>, List<Map<String, dynamic>>>(availableSolutionTemplateVersions, (value) => pulumi.Input.encodeList<AvailableSolutionTemplateVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'solutionTemplateId': solutionTemplateId,
    };
  }

  factory SolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPropertiesResponse(
      availableSolutionTemplateVersions: (pulumi.Input.decodeList<AvailableSolutionTemplateVersionResponse>(map['availableSolutionTemplateVersions'], (value) => AvailableSolutionTemplateVersionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      solutionTemplateId: (map['solutionTemplateId'] as String).input(),
    );
  }
}

