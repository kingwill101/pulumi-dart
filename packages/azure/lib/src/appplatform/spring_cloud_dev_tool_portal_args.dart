// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_dev_tool_portal_sso.dart';

/// {@template pulumi_appplatform_spring_cloud_dev_tool_portal_spring_cloud_dev_tool_portal_args_doc}
/// The set of arguments for SpringCloudDevToolPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_dev_tool_portal_spring_cloud_dev_tool_portal_args_doc}
class SpringCloudDevToolPortalArgs {
  /// Should the Accelerator plugin be enabled?
  final pulumi.Input<bool>? applicationAcceleratorEnabled;
  /// Should the Application Live View be enabled?
  final pulumi.Input<bool>? applicationLiveViewEnabled;
  /// The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  final pulumi.Input<String>? name;
  /// Is public network access enabled?
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// A `sso` block as defined below.
  final pulumi.Input<SpringCloudDevToolPortalSso>? sso;

  /// Creates a new [SpringCloudDevToolPortalArgs].
  /// [applicationAcceleratorEnabled] Should the Accelerator plugin be enabled?
  /// [applicationLiveViewEnabled] Should the Application Live View be enabled?
  /// [name] The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  /// [sso] A `sso` block as defined below.
  SpringCloudDevToolPortalArgs({
    bool? applicationAcceleratorEnabled,
    bool? applicationLiveViewEnabled,
    String? name,
    bool? publicNetworkAccessEnabled,
    required String springCloudServiceId,
    SpringCloudDevToolPortalSso? sso,
  }) :
      applicationAcceleratorEnabled = pulumi.Input.asOptionalInput<bool>(applicationAcceleratorEnabled),
      applicationLiveViewEnabled = pulumi.Input.asOptionalInput<bool>(applicationLiveViewEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId),
      sso = pulumi.Input.asOptionalInput<SpringCloudDevToolPortalSso>(sso);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorEnabled': ?applicationAcceleratorEnabled,
      'applicationLiveViewEnabled': ?applicationLiveViewEnabled,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'springCloudServiceId': springCloudServiceId,
      'sso': ?pulumi.Input.mapOptionalInputValue<SpringCloudDevToolPortalSso, Map<String, dynamic>>(sso, (value) => value.toMap()),
    };
  }

  factory SpringCloudDevToolPortalArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudDevToolPortalArgs(
      applicationAcceleratorEnabled: map['applicationAcceleratorEnabled'] == null ? null : map['applicationAcceleratorEnabled'] as bool,
      applicationLiveViewEnabled: map['applicationLiveViewEnabled'] == null ? null : map['applicationLiveViewEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      springCloudServiceId: map['springCloudServiceId'] as String,
      sso: map['sso'] == null ? null : SpringCloudDevToolPortalSso.fromMap((map['sso'] as Map).cast<String, dynamic>()),
    );
  }
}

