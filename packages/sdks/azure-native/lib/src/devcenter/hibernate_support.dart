/// Indicates whether Dev Boxes created with this definition are capable of hibernation. Not all images are capable of supporting hibernation. To find out more see https://aka.ms/devbox/hibernate
enum HibernateSupport {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const HibernateSupport(this.wireValue);
  final String wireValue;

  static HibernateSupport fromValue(String value) {
    for (final item in HibernateSupport.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HibernateSupport value: $value');
  }
}

