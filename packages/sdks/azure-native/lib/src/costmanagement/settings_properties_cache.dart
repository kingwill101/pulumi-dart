// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsPropertiesCache {
  /// Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  final pulumi.Input<String> channel;
  /// Resource ID used by Resource Manager to uniquely identify the scope.
  final pulumi.Input<String> id;
  /// Display name for the scope.
  final pulumi.Input<String> name;
  /// Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  final pulumi.Input<String>? parent;
  /// Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  final pulumi.Input<String>? status;
  /// Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  final pulumi.Input<String> subchannel;

  /// Creates a new [SettingsPropertiesCache].
  /// [channel] Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  /// [id] Resource ID used by Resource Manager to uniquely identify the scope.
  /// [name] Display name for the scope.
  /// [parent] Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  /// [status] Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  /// [subchannel] Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  const SettingsPropertiesCache({
    required this.channel,
    required this.id,
    required this.name,
    this.parent,
    this.status,
    required this.subchannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'id': id,
      'name': name,
      'parent': ?parent,
      'status': ?status,
      'subchannel': subchannel,
    };
  }

  factory SettingsPropertiesCache.fromMap(Map<String, dynamic> map) {
    return SettingsPropertiesCache(
      channel: pulumi.Input.fromValue(map['channel'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subchannel: pulumi.Input.fromValue(map['subchannel'] as String),
    );
  }
}

