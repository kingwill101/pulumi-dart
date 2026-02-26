// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connect_attachment_options/connect_attachment_options.dart';

/// The set of arguments for ConnectAttachment.
class ConnectAttachmentArgs {
  /// ID of a core network where you want to create the attachment.
  final Input<String> coreNetworkId;

  /// Region where the edge is located.
  final Input<String> edgeLocation;

  /// Options block. See options for more information.
  final Input<ConnectAttachmentOptions> options;

  /// The routing policy label to apply to the Connect attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final Input<String>? routingPolicyLabel;

  /// Key-value tags for the attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ID of the attachment between the two connections.
  ///
  /// The following arguments are optional:
  final Input<String> transportAttachmentId;

  ConnectAttachmentArgs({
    required this.coreNetworkId,
    required this.edgeLocation,
    required this.options,
    this.routingPolicyLabel,
    this.tags,
    required this.transportAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    map['edgeLocation'] = edgeLocation;
    map['options'] =
        Input.mapInputValue<ConnectAttachmentOptions, Map<String, dynamic>>(
            options, (value) => value.toMap());
    final routingPolicyLabelValue = routingPolicyLabel;
    if (routingPolicyLabelValue != null) {
      map['routingPolicyLabel'] = routingPolicyLabelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transportAttachmentId'] = transportAttachmentId;
    return map;
  }

  factory ConnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectAttachmentArgs(
      coreNetworkId: Input.asInput<String>(map['coreNetworkId']),
      edgeLocation: Input.asInput<String>(map['edgeLocation']),
      options: Input.asInput<ConnectAttachmentOptions>(map['options']),
      routingPolicyLabel:
          Input.asOptionalInput<String>(map['routingPolicyLabel']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transportAttachmentId:
          Input.asInput<String>(map['transportAttachmentId']),
    );
  }
}
