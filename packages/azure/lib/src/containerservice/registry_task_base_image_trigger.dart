// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskBaseImageTrigger {
  /// Should the trigger be enabled? Defaults to `true`.
  final bool? enabled;
  /// The name which should be used for this trigger.
  final String name;
  /// The type of the trigger. Possible values are `All` and `Runtime`.
  final String type;
  /// The endpoint URL for receiving the trigger.
  final String? updateTriggerEndpoint;
  /// Type of payload body for the trigger. Possible values are `Default` and `Token`.
  final String? updateTriggerPayloadType;

  /// Creates a new [RegistryTaskBaseImageTrigger].
  /// [enabled] Should the trigger be enabled? Defaults to `true`.
  /// [name] The name which should be used for this trigger.
  /// [type] The type of the trigger. Possible values are `All` and `Runtime`.
  /// [updateTriggerEndpoint] The endpoint URL for receiving the trigger.
  /// [updateTriggerPayloadType] Type of payload body for the trigger. Possible values are `Default` and `Token`.
  RegistryTaskBaseImageTrigger({
    this.enabled,
    required this.name,
    required this.type,
    this.updateTriggerEndpoint,
    this.updateTriggerPayloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'type': type,
      'updateTriggerEndpoint': ?updateTriggerEndpoint,
      'updateTriggerPayloadType': ?updateTriggerPayloadType,
    };
  }

  factory RegistryTaskBaseImageTrigger.fromMap(Map<String, dynamic> map) {
    return RegistryTaskBaseImageTrigger(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] as String,
      type: map['type'] as String,
      updateTriggerEndpoint: map['updateTriggerEndpoint'] == null ? null : map['updateTriggerEndpoint'] as String,
      updateTriggerPayloadType: map['updateTriggerPayloadType'] == null ? null : map['updateTriggerPayloadType'] as String,
    );
  }
}

