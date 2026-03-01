/// The convention used to determine the url of the request made.
enum ForwardProxyConvention {
  valueNoProxy("NoProxy"),
  valueStandard("Standard"),
  valueCustom("Custom");

  const ForwardProxyConvention(this.value);
  final String value;

  static ForwardProxyConvention fromValue(String value) {
    for (final item in ForwardProxyConvention.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardProxyConvention value: $value');
  }
}

