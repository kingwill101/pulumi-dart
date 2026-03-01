/// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
enum IPVersion {
  iPv4("IPv4"),
  iPv6("IPv6");

  const IPVersion(this.value);
  final String value;

  static IPVersion fromValue(String value) {
    for (final item in IPVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPVersion value: $value');
  }
}

