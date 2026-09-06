// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource selected from ARM
class SelectedResourceResponse {
  /// Id of the connection
  final pulumi.Input<String> id;
  /// Location of the connection
  final pulumi.Input<String?>? location;
  /// Name of the connection
  final pulumi.Input<String?>? name;
  /// Name of the subscription with the connection
  final pulumi.Input<String?>? subscriptionName;

  /// Creates a new [SelectedResourceResponse].
  /// [id] Id of the connection
  /// [location] Location of the connection
  /// [name] Name of the connection
  /// [subscriptionName] Name of the subscription with the connection
  const SelectedResourceResponse({
    required this.id,
    this.location,
    this.name,
    this.subscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'name': ?name,
      'subscriptionName': ?subscriptionName,
    };
  }

  factory SelectedResourceResponse.fromMap(Map<String, dynamic> map) {
    return SelectedResourceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionName: (() { final guardedValue = map['subscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
