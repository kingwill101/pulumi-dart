/// The expander to use when scaling up. If not specified, the default is 'random'. See [expanders](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#what-are-expanders) for more information.
enum Expander {
  valueLeastWaste("least-waste"),
  valueMostPods("most-pods"),
  valuePriority("priority"),
  valueRandom("random");

  const Expander(this.value);
  final String value;

  static Expander fromValue(String value) {
    for (final item in Expander.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Expander value: $value');
  }
}

