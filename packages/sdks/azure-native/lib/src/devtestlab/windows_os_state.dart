/// The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
enum WindowsOsState {
  nonSysprepped("NonSysprepped"),
  sysprepRequested("SysprepRequested"),
  sysprepApplied("SysprepApplied");

  const WindowsOsState(this.value);
  final String value;

  static WindowsOsState fromValue(String value) {
    for (final item in WindowsOsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsOsState value: $value');
  }
}

