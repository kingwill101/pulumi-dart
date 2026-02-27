// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getListener.
class GetListenerVpclatticeArgs {
  /// ID or Amazon Resource Name (ARN) of the listener
  final pulumi.Input<String> listenerIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID or Amazon Resource Name (ARN) of the service network
  final pulumi.Input<String> serviceIdentifier;

  /// List of tags associated with the listener.
  final pulumi.Input<Map<String, String>>? tags;

  GetListenerVpclatticeArgs({
    required this.listenerIdentifier,
    this.region,
    required this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['listenerIdentifier'] = listenerIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceIdentifier'] = serviceIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetListenerVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerVpclatticeArgs(
      listenerIdentifier:
          pulumi.Input.asInput<String>(map['listenerIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceIdentifier: pulumi.Input.asInput<String>(map['serviceIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
