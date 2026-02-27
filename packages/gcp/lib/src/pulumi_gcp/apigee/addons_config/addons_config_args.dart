// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../addons_config_addons_config/addons_config_addons_config.dart';

/// The set of arguments for AddonsConfig.
class AddonsConfigArgs {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfig>? addonsConfig;

  /// Name of the Apigee organization.
  final pulumi.Input<String> org;

  AddonsConfigArgs({
    this.addonsConfig,
    required this.org,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsConfigValue = addonsConfig;
    if (addonsConfigValue != null) {
      map['addonsConfig'] = pulumi.Input.mapOptionalInputValue<
          AddonsConfigAddonsConfig,
          Map<String, dynamic>>(addonsConfigValue, (value) => value.toMap());
    }
    map['org'] = org;
    return map;
  }

  factory AddonsConfigArgs.fromMap(Map<String, dynamic> map) {
    return AddonsConfigArgs(
      addonsConfig: pulumi.Input.asOptionalInput<AddonsConfigAddonsConfig>(
          map['addonsConfig']),
      org: pulumi.Input.asInput<String>(map['org']),
    );
  }
}
