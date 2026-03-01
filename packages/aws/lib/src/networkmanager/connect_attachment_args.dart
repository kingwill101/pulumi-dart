// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_attachment_options.dart';

/// {@template pulumi_networkmanager_connect_attachment_connect_attachment_args_doc}
/// The set of arguments for ConnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_connect_attachment_connect_attachment_args_doc}
class ConnectAttachmentArgs {
  /// ID of a core network where you want to create the attachment.
  final pulumi.Input<String> coreNetworkId;

  /// Region where the edge is located.
  final pulumi.Input<String> edgeLocation;

  /// Options block. See options for more information.
  final pulumi.Input<ConnectAttachmentOptions> options;

  /// The routing policy label to apply to the Connect attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the attachment between the two connections.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transportAttachmentId;

  /// Creates a new [ConnectAttachmentArgs].
  /// [coreNetworkId] ID of a core network where you want to create the attachment.
  /// [edgeLocation] Region where the edge is located.
  /// [options] Options block. See options for more information.
  /// [routingPolicyLabel] The routing policy label to apply to the Connect attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transportAttachmentId] ID of the attachment between the two connections.
  ConnectAttachmentArgs({
    required String coreNetworkId,
    required String edgeLocation,
    required ConnectAttachmentOptions options,
    String? routingPolicyLabel,
    Map<String, String>? tags,
    required String transportAttachmentId,
  }) : coreNetworkId = pulumi.Input.asInput<String>(coreNetworkId),
       edgeLocation = pulumi.Input.asInput<String>(edgeLocation),
       options = pulumi.Input.asInput<ConnectAttachmentOptions>(options),
       routingPolicyLabel = pulumi.Input.asOptionalInput<String>(
         routingPolicyLabel,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transportAttachmentId = pulumi.Input.asInput<String>(
         transportAttachmentId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'edgeLocation': edgeLocation,
      'options':
          pulumi.Input.mapInputValue<
            ConnectAttachmentOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'routingPolicyLabel': ?routingPolicyLabel,
      'tags': ?tags,
      'transportAttachmentId': transportAttachmentId,
    };
  }

  factory ConnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectAttachmentArgs(
      coreNetworkId: map['coreNetworkId'] as String,
      edgeLocation: map['edgeLocation'] as String,
      options: ConnectAttachmentOptions.fromMap(
        (map['options'] as Map).cast<String, dynamic>(),
      ),
      routingPolicyLabel: map['routingPolicyLabel'] == null
          ? null
          : map['routingPolicyLabel'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transportAttachmentId: map['transportAttachmentId'] as String,
    );
  }
}
