// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_customization_script_response.dart';
import 'user_assigned_identity_response.dart';

/// The properties of the Node Customization resource.
class NodeCustomizationPropertiesResponse {
  /// The list of container images to cache on nodes. See https://kubernetes.io/docs/concepts/containers/images/#image-names
  final pulumi.Input<List<String>>? containerImages;
  /// The scripts to customize the node before or after image capture.
  final pulumi.Input<List<NodeCustomizationScriptResponse>>? customizationScripts;
  /// The identity used to execute node customization tasks during image build time and provisioning time.
  /// If not specified the default agentpool identity will be used.
  /// This does not affect provisioned nodes.
  final pulumi.Input<UserAssignedIdentityResponse>? identityProfile;
  /// The provisioning state of the node customization.
  final pulumi.Input<String> provisioningState;
  /// An auto-generated value that changes when the other fields of the image customization are changed.
  final pulumi.Input<String> version;

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
      'customizationScripts': ?pulumi.Input.mapOptionalInputValue<List<NodeCustomizationScriptResponse>, List<Map<String, dynamic>>>(customizationScripts, (value) => pulumi.Input.encodeList<NodeCustomizationScriptResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identityProfile': ?pulumi.Input.mapOptionalInputValue<UserAssignedIdentityResponse, Map<String, dynamic>>(identityProfile, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'version': version,
    };
  }

  factory NodeCustomizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationPropertiesResponse(
      containerImages: map['containerImages'] == null ? null : ((map['containerImages']! as List).cast<String>()).input(),
      customizationScripts: map['customizationScripts'] == null ? null : (pulumi.Input.decodeList<NodeCustomizationScriptResponse>(map['customizationScripts']!, (value) => NodeCustomizationScriptResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identityProfile: map['identityProfile'] == null ? null : (UserAssignedIdentityResponse.fromMap((map['identityProfile']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

