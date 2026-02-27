// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_requirements_compute_beta.dart';

/// The set of arguments for License.
class LicenseComputeBetaArgs {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  final pulumi.Input<String>? description;

  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<LicenseResourceRequirementsComputeBeta>?
      resourceRequirements;

  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final pulumi.Input<bool>? transferable;

  LicenseComputeBetaArgs({
    this.description,
    this.name,
    this.project,
    this.requestId,
    this.resourceRequirements,
    this.transferable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourceRequirementsValue = resourceRequirements;
    if (resourceRequirementsValue != null) {
      map['resourceRequirements'] = pulumi.Input.mapOptionalInputValue<
              LicenseResourceRequirementsComputeBeta, Map<String, dynamic>>(
          resourceRequirementsValue, (value) => value.toMap());
    }
    final transferableValue = transferable;
    if (transferableValue != null) {
      map['transferable'] = transferableValue;
    }
    return map;
  }

  factory LicenseComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return LicenseComputeBetaArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      resourceRequirements:
          pulumi.Input.asOptionalInput<LicenseResourceRequirementsComputeBeta>(
              map['resourceRequirements']),
      transferable: pulumi.Input.asOptionalInput<bool>(map['transferable']),
    );
  }
}
