/// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
enum IPVersions {
  iPv4("IPv4"),
  iPv6("IPv6");

  const IPVersions(this.wireValue);
  final String wireValue;

  static IPVersions fromValue(String value) {
    for (final item in IPVersions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPVersions value: $value');
  }
}
