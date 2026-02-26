// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../hosting_version_config/hosting_version_config.dart';

/// The set of arguments for HostingVersion.
class HostingVersionArgs {
  /// The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// Structure is documented below.
  final Input<HostingVersionConfig>? config;

  /// Required. The ID of the site in which to create this Version.
  final Input<String> siteId;

  HostingVersionArgs({
    this.config,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = Input.mapOptionalInputValue<HostingVersionConfig,
          Map<String, dynamic>>(configValue, (value) => value.toMap());
    }
    map['siteId'] = siteId;
    return map;
  }

  factory HostingVersionArgs.fromMap(Map<String, dynamic> map) {
    return HostingVersionArgs(
      config: Input.asOptionalInput<HostingVersionConfig>(map['config']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
