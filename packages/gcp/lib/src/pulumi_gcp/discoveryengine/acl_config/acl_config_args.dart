// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../acl_config_idp_config/acl_config_idp_config.dart';

/// The set of arguments for AclConfig.
class AclConfigArgs {
  /// Identity provider config.
  /// Structure is documented below.
  final pulumi.Input<AclConfigIdpConfig>? idpConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AclConfigArgs({
    this.idpConfig,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idpConfigValue = idpConfig;
    if (idpConfigValue != null) {
      map['idpConfig'] = pulumi.Input.mapOptionalInputValue<AclConfigIdpConfig,
          Map<String, dynamic>>(idpConfigValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AclConfigArgs.fromMap(Map<String, dynamic> map) {
    return AclConfigArgs(
      idpConfig:
          pulumi.Input.asOptionalInput<AclConfigIdpConfig>(map['idpConfig']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
