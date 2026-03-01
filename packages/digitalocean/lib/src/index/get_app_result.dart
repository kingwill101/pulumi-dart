// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_dedicated_ip.dart';
import 'get_app_spec.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The ID the app's currently active deployment.
  final String activeDeploymentId;
  final String appId;
  /// The date and time of when the app was created.
  final String createdAt;
  /// A list of dedicated egress IP addresses associated with the app.
  final List<GetAppDedicatedIp> dedicatedIps;
  /// The default URL to access the app.
  final String defaultIngress;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The live domain of the app.
  final String liveDomain;
  /// The live URL of the app.
  final String liveUrl;
  /// The ID of the project that the app is assigned to.
  final String projectId;
  /// A DigitalOcean App spec describing the app.
  final List<GetAppSpec> specs;
  /// The date and time of when the app was last updated.
  final String updatedAt;
  /// The uniform resource identifier for the app.
  final String urn;

  /// Creates a new [GetAppResult].
  /// [activeDeploymentId] The ID the app's currently active deployment.
  /// [appId] Required.
  /// [createdAt] The date and time of when the app was created.
  /// [dedicatedIps] A list of dedicated egress IP addresses associated with the app.
  /// [defaultIngress] The default URL to access the app.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [liveDomain] The live domain of the app.
  /// [liveUrl] The live URL of the app.
  /// [projectId] The ID of the project that the app is assigned to.
  /// [specs] A DigitalOcean App spec describing the app.
  /// [updatedAt] The date and time of when the app was last updated.
  /// [urn] The uniform resource identifier for the app.
  GetAppResult({
    required this.activeDeploymentId,
    required this.appId,
    required this.createdAt,
    required this.dedicatedIps,
    required this.defaultIngress,
    required this.id,
    required this.liveDomain,
    required this.liveUrl,
    required this.projectId,
    required this.specs,
    required this.updatedAt,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeploymentId': activeDeploymentId,
      'appId': appId,
      'createdAt': createdAt,
      'dedicatedIps': pulumi.Input.encodeList<GetAppDedicatedIp, Map<String, dynamic>>(dedicatedIps, (value) => value.toMap()),
      'defaultIngress': defaultIngress,
      'id': id,
      'liveDomain': liveDomain,
      'liveUrl': liveUrl,
      'projectId': projectId,
      'specs': pulumi.Input.encodeList<GetAppSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
      'updatedAt': updatedAt,
      'urn': urn,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      activeDeploymentId: map['activeDeploymentId'] as String,
      appId: map['appId'] as String,
      createdAt: map['createdAt'] as String,
      dedicatedIps: pulumi.Input.decodeList<GetAppDedicatedIp>(map['dedicatedIps'], (value) => GetAppDedicatedIp.fromMap((value as Map).cast<String, dynamic>())),
      defaultIngress: map['defaultIngress'] as String,
      id: map['id'] as String,
      liveDomain: map['liveDomain'] as String,
      liveUrl: map['liveUrl'] as String,
      projectId: map['projectId'] as String,
      specs: pulumi.Input.decodeList<GetAppSpec>(map['specs'], (value) => GetAppSpec.fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] as String,
      urn: map['urn'] as String,
    );
  }
}

