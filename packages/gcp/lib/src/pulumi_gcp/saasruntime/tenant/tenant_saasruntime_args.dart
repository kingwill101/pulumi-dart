// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tenant.
class TenantSaasruntimeArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A reference to the consumer resource this SaaS Tenant is representing.
  /// The relationship with a consumer resource can be used by SaaS Runtime for
  /// retrieving consumer-defined settings and policies such as maintenance
  /// policies (using Unified Maintenance Policy API).
  final pulumi.Input<String>? consumerResource;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the
  /// SaaS Runtime common data model.
  final pulumi.Input<String> saas;

  /// The ID value for the new tenant.
  final pulumi.Input<String> tenantId;

  TenantSaasruntimeArgs({
    this.annotations,
    this.consumerResource,
    this.labels,
    required this.location,
    this.project,
    required this.saas,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final consumerResourceValue = consumerResource;
    if (consumerResourceValue != null) {
      map['consumerResource'] = consumerResourceValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['saas'] = saas;
    map['tenantId'] = tenantId;
    return map;
  }

  factory TenantSaasruntimeArgs.fromMap(Map<String, dynamic> map) {
    return TenantSaasruntimeArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      consumerResource:
          pulumi.Input.asOptionalInput<String>(map['consumerResource']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      saas: pulumi.Input.asInput<String>(map['saas']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
