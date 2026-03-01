// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_realm_symantec_options.dart';

/// {@template pulumi_networksecurity_sac_realm_sac_realm_args_doc}
/// The set of arguments for SacRealm.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_sac_realm_sac_realm_args_doc}
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

  /// Creates a new [SacRealmArgs].
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Identifier. Resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [securityService] SSE service provider associated with the realm.
  /// [symantecOptions] Configuration required for Symantec realms.
  SacRealmArgs({
    Map<String, String>? labels,
    String? name,
    String? project,
    required String securityService,
    SacRealmSymantecOptions? symantecOptions,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      securityService = pulumi.Input.asInput<String>(securityService),
      symantecOptions = pulumi.Input.asOptionalInput<SacRealmSymantecOptions>(symantecOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'securityService': securityService,
      'symantecOptions': ?pulumi.Input.mapOptionalInputValue<SacRealmSymantecOptions, Map<String, dynamic>>(symantecOptions, (value) => value.toMap()),
    };
  }

  factory SacRealmArgs.fromMap(Map<String, dynamic> map) {
    return SacRealmArgs(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      securityService: map['securityService'] as String,
      symantecOptions: map['symantecOptions'] == null ? null : SacRealmSymantecOptions.fromMap((map['symantecOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

