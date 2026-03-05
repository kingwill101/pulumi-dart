/// Gets or sets the type of the runbook.
enum RunbookTypeEnum {
  valueScript("Script"),
  valueGraph("Graph"),
  valuePowerShellWorkflow("PowerShellWorkflow"),
  valuePowerShell("PowerShell"),
  valueGraphPowerShellWorkflow("GraphPowerShellWorkflow"),
  valueGraphPowerShell("GraphPowerShell"),
  valuePython2("Python2"),
  valuePython3("Python3"),
  valuePowerShell72("PowerShell72");

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

