// ignore_for_file: unused_element, unnecessary_cast


class GetPoolWindow {
  /// Whether automatic updates are enabled on the virtual machine.
  final bool enableAutomaticUpdates;

  /// Creates a new [GetPoolWindow].
  /// [enableAutomaticUpdates] Whether automatic updates are enabled on the virtual machine.
  GetPoolWindow({
    required this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': enableAutomaticUpdates,
    };
  }

  factory GetPoolWindow.fromMap(Map<String, dynamic> map) {
    return GetPoolWindow(
      enableAutomaticUpdates: map['enableAutomaticUpdates'] as bool,
    );
  }
}

