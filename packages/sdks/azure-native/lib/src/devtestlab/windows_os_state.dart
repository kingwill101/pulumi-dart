/// The state of the Windows OS (i.e. NonSysprepped, SysprepRequested, SysprepApplied).
enum WindowsOsState {
  nonSysprepped("NonSysprepped"),
  sysprepRequested("SysprepRequested"),
  sysprepApplied("SysprepApplied");

  const WindowsOsState(this.wireValue);
  final String wireValue;

  static WindowsOsState fromValue(String value) {
    for (final item in WindowsOsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsOsState value: $value');
  }
}

