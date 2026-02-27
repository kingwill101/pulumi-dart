// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sac_realm_symantec_options/sac_realm_symantec_options.dart';

/// The set of arguments for SacRealm.
class SacRealmArgs {
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Identifier. Resource name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// SSE service provider associated with the realm.
  /// Possible values are: `SECURITY_SERVICE_UNSPECIFIED`, `PALO_ALTO_PRISMA_ACCESS`, `SYMANTEC_CLOUD_SWG`.
  final pulumi.Input<String> securityService;

  /// Configuration required for Symantec realms.
  /// Structure is documented below.
  final pulumi.Input<SacRealmSymantecOptions>? symantecOptions;

  SacRealmArgs({
    this.labels,
    this.name,
    this.project,
    required this.securityService,
    this.symantecOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['securityService'] = securityService;
    final symantecOptionsValue = symantecOptions;
    if (symantecOptionsValue != null) {
      map['symantecOptions'] = pulumi.Input.mapOptionalInputValue<
          SacRealmSymantecOptions,
          Map<String, dynamic>>(symantecOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SacRealmArgs.fromMap(Map<String, dynamic> map) {
    return SacRealmArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securityService: pulumi.Input.asInput<String>(map['securityService']),
      symantecOptions: pulumi.Input.asOptionalInput<SacRealmSymantecOptions>(
          map['symantecOptions']),
    );
  }
}
