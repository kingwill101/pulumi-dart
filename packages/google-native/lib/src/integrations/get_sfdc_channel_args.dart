// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_sfdc_channel_args_doc}
/// Arguments for getSfdcChannel.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_sfdc_channel_args_doc}
class GetSfdcChannelArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcChannelId;
  final pulumi.Input<String> sfdcInstanceId;

  /// Creates a new [GetSfdcChannelArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [sfdcChannelId] Required.
  /// [sfdcInstanceId] Required.
  GetSfdcChannelArgs({
    required String location,
    required String productId,
    String? project,
    required String sfdcChannelId,
    required String sfdcInstanceId,
  })  : location = pulumi.Input.asInput<String>(location),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        sfdcChannelId = pulumi.Input.asInput<String>(sfdcChannelId),
        sfdcInstanceId = pulumi.Input.asInput<String>(sfdcInstanceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sfdcChannelId'] = sfdcChannelId;
    map['sfdcInstanceId'] = sfdcInstanceId;
    return map;
  }

  factory GetSfdcChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetSfdcChannelArgs(
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sfdcChannelId: map['sfdcChannelId'] as String,
      sfdcInstanceId: map['sfdcInstanceId'] as String,
    );
  }
}
