/// The size of the virtual machine.
enum VirtualMachineSizeTypes {
  valueUnknown("Unknown"),
  valueStandardD1V2("Standard_D1_v2"),
  valueStandardD2V2("Standard_D2_v2"),
  valueStandardD3V2("Standard_D3_v2"),
  valueStandardD4V2("Standard_D4_v2"),
  valueStandardD5V2("Standard_D5_v2"),
  valueStandardD11V2("Standard_D11_v2"),
  valueStandardD12V2("Standard_D12_v2"),
  valueStandardD13V2("Standard_D13_v2"),
  valueStandardDS1V2("Standard_DS1_v2"),
  valueStandardDS2V2("Standard_DS2_v2"),
  valueStandardDS3V2("Standard_DS3_v2"),
  valueStandardDS4V2("Standard_DS4_v2"),
  valueStandardDS5V2("Standard_DS5_v2"),
  valueStandardDS11V2("Standard_DS11_v2"),
  valueStandardDS12V2("Standard_DS12_v2"),
  valueStandardDS13V2("Standard_DS13_v2"),
  valueStandardF1("Standard_F1"),
  valueStandardF2("Standard_F2"),
  valueStandardF4("Standard_F4"),
  valueStandardF8("Standard_F8"),
  valueStandardF16("Standard_F16"),
  valueStandardF1s("Standard_F1s"),
  valueStandardF2s("Standard_F2s"),
  valueStandardF4s("Standard_F4s"),
  valueStandardF8s("Standard_F8s"),
  valueStandardF16s("Standard_F16s");

  const VirtualMachineSizeTypes(this.value);
  final String value;

  static VirtualMachineSizeTypes fromValue(String value) {
    for (final item in VirtualMachineSizeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineSizeTypes value: $value');
  }
}

