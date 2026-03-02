// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectServiceCatalogProvisioningDetailsProvisioningParameter {
  /// The key that identifies a provisioning parameter.
  final pulumi.Input<String> key;
  /// The value of the provisioning parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ProjectServiceCatalogProvisioningDetailsProvisioningParameter].
  /// [key] The key that identifies a provisioning parameter.
  /// [value] The value of the provisioning parameter.
  ProjectServiceCatalogProvisioningDetailsProvisioningParameter({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ProjectServiceCatalogProvisioningDetailsProvisioningParameter.fromMap(Map<String, dynamic> map) {
    return ProjectServiceCatalogProvisioningDetailsProvisioningParameter(
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

