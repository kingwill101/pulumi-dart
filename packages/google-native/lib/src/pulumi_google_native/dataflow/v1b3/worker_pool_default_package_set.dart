/// The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
enum WorkerPoolDefaultPackageSet {
  defaultPackageSetUnknown("DEFAULT_PACKAGE_SET_UNKNOWN"),
  defaultPackageSetNone("DEFAULT_PACKAGE_SET_NONE"),
  defaultPackageSetJava("DEFAULT_PACKAGE_SET_JAVA"),
  defaultPackageSetPython("DEFAULT_PACKAGE_SET_PYTHON");

  const WorkerPoolDefaultPackageSet(this.value);
  final String value;

  static WorkerPoolDefaultPackageSet fromValue(String value) {
    for (final item in WorkerPoolDefaultPackageSet.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkerPoolDefaultPackageSet value: $value');
  }
}
