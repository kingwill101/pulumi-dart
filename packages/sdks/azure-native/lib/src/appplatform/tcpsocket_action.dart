// ignore_for_file: unused_element, unnecessary_cast


/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// The type of the action to take to perform the health check.
  /// Expected value is 'TCPSocketAction'.
  final String type;

  /// Creates a new [TCPSocketAction].
  /// [type] The type of the action to take to perform the health check.
  TCPSocketAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return TCPSocketAction(
      type: map['type'] as String,
    );
  }
}

