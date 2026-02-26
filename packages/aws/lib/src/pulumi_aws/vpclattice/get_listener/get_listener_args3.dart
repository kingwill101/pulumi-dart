// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getListener.
class GetListenerArgs3 {
  /// ID or Amazon Resource Name (ARN) of the listener
  final Input<String> listenerIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID or Amazon Resource Name (ARN) of the service network
  final Input<String> serviceIdentifier;

  /// List of tags associated with the listener.
  final Input<Map<String, String>>? tags;

  GetListenerArgs3({
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

  factory GetListenerArgs3.fromMap(Map<String, dynamic> map) {
    return GetListenerArgs3(
      listenerIdentifier: Input.asInput<String>(map['listenerIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceIdentifier: Input.asInput<String>(map['serviceIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
