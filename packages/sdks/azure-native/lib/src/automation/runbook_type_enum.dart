/// Gets or sets the type of the runbook.
enum RunbookTypeEnum {
  script("Script"),
  graph("Graph"),
  powerShellWorkflow("PowerShellWorkflow"),
  powerShell("PowerShell"),
  graphPowerShellWorkflow("GraphPowerShellWorkflow"),
  graphPowerShell("GraphPowerShell"),
  python2("Python2"),
  python3("Python3"),
  python("Python"),
  powerShell72("PowerShell72");

  const RunbookTypeEnum(this.wireValue);
  final String wireValue;

  static RunbookTypeEnum fromValue(String value) {
    for (final item in RunbookTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunbookTypeEnum value: $value');
  }
}
