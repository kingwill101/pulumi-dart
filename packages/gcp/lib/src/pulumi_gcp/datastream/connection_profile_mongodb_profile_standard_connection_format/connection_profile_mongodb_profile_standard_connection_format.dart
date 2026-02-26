// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileMongodbProfileStandardConnectionFormat {
  /// Specifies whether the client connects directly to the
  /// host[:port] in the connection URI.
  final bool? directConnection;

  ConnectionProfileMongodbProfileStandardConnectionFormat({
    this.directConnection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directConnectionValue = directConnection;
    if (directConnectionValue != null) {
      map['directConnection'] = directConnectionValue;
    }
    return map;
  }

  factory ConnectionProfileMongodbProfileStandardConnectionFormat.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileStandardConnectionFormat(
      directConnection: map['directConnection'] == null
          ? null
          : map['directConnection'] as bool,
    );
  }
}
