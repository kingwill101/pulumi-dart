// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_customization_script_response.dart';
import 'user_assigned_identity_response.dart';

/// The properties of the Node Customization resource.
class NodeCustomizationPropertiesResponse {
  /// The list of container images to cache on nodes. See https://kubernetes.io/docs/concepts/containers/images/#image-names
  final List<String>? containerImages;
  /// The scripts to customize the node before or after image capture.
  final List<NodeCustomizationScriptResponse>? customizationScripts;
  /// The identity used to execute node customization tasks during image build time and provisioning time.
  /// If not specified the default agentpool identity will be used.
  /// This does not affect provisioned nodes.
  final UserAssignedIdentityResponse? identityProfile;
  /// The provisioning state of the node customization.
  final String provisioningState;
  /// An auto-generated value that changes when the other fields of the image customization are changed.
  final String version;

  /// Creates a new [NodeCustomizationPropertiesResponse].
  /// [containerImages] The list of container images to cache on nodes. See https://kubernetes.io/docs/concepts/containers/images/#image-names
  /// [customizationScripts] The scripts to customize the node before or after image capture.
  /// [identityProfile] The identity used to execute node customization tasks during image build time and provisioning time.
  /// [provisioningState] The provisioning state of the node customization.
  /// [version] An auto-generated value that changes when the other fields of the image customization are changed.
  NodeCustomizationPropertiesResponse({
    this.containerImages,
    this.customizationScripts,
    this.identityProfile,
    required this.provisioningState,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImages': ?containerImages,
      'customizationScripts': ?customizationScripts == null ? null : pulumi.Input.encodeList<NodeCustomizationScriptResponse, Map<String, dynamic>>(customizationScripts!, (value) => value.toMap()),
      'identityProfile': ?identityProfile == null ? null : identityProfile!.toMap(),
      'provisioningState': provisioningState,
      'version': version,
    };
  }

  factory NodeCustomizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationPropertiesResponse(
      containerImages: map['containerImages'] == null ? null : (map['containerImages'] as List).cast<String>(),
      customizationScripts: map['customizationScripts'] == null ? null : pulumi.Input.decodeList<NodeCustomizationScriptResponse>(map['customizationScripts'], (value) => NodeCustomizationScriptResponse.fromMap((value as Map).cast<String, dynamic>())),
      identityProfile: map['identityProfile'] == null ? null : UserAssignedIdentityResponse.fromMap((map['identityProfile'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      version: map['version'] as String,
    );
  }
}

