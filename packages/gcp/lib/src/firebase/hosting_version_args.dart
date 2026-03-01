// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_version_config.dart';

/// {@template pulumi_firebase_hosting_version_hosting_version_args_doc}
/// The set of arguments for HostingVersion.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_version_hosting_version_args_doc}
class HostingVersionArgs {
  /// The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// Structure is documented below.
  final pulumi.Input<HostingVersionConfig>? config;

  /// Required. The ID of the site in which to create this Version.
  final pulumi.Input<String> siteId;

  /// Creates a new [HostingVersionArgs].
  /// [config] The configuration for the behavior of the site. This configuration exists in the `firebase.json` file.
  /// [siteId] Required. The ID of the site in which to create this Version.
  HostingVersionArgs({HostingVersionConfig? config, required String siteId})
    : config = pulumi.Input.asOptionalInput<HostingVersionConfig>(config),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            HostingVersionConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'siteId': siteId,
    };
  }

  factory HostingVersionArgs.fromMap(Map<String, dynamic> map) {
    return HostingVersionArgs(
      config: map['config'] == null
          ? null
          : HostingVersionConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>(),
            ),
      siteId: map['siteId'] as String,
    );
  }
}
