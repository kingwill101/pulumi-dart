/// SKU of the dedicated HSM
enum SkuName {
  valueSafeNetLunaNetworkHSMA790("SafeNet Luna Network HSM A790"),
  valuePayShield10KLMK1CPS60("payShield10K_LMK1_CPS60"),
  valuePayShield10KLMK1CPS250("payShield10K_LMK1_CPS250"),
  valuePayShield10KLMK1CPS2500("payShield10K_LMK1_CPS2500"),
  valuePayShield10KLMK2CPS60("payShield10K_LMK2_CPS60"),
  valuePayShield10KLMK2CPS250("payShield10K_LMK2_CPS250"),
  valuePayShield10KLMK2CPS2500("payShield10K_LMK2_CPS2500");

  const SkuName(this.value);
  final String value;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}

