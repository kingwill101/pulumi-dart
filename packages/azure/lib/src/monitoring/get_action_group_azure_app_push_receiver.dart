// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupAzureAppPushReceiver {
  /// The email address of this receiver.
  final String emailAddress;
  /// Specifies the name of the Action Group.
  final String name;

  /// Creates a new [GetActionGroupAzureAppPushReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] Specifies the name of the Action Group.
  GetActionGroupAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
    };
  }

  factory GetActionGroupAzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupAzureAppPushReceiver(
      emailAddress: map['emailAddress'] as String,
      name: map['name'] as String,
    );
  }
}

