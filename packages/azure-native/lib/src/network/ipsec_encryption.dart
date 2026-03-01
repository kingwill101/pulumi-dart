/// The IPSec encryption algorithm (IKE phase 1).
enum IpsecEncryption {
  valueNone("None"),
  valueDES("DES"),
  valueDES3("DES3"),
  valueAES128("AES128"),
  valueAES192("AES192"),
  valueAES256("AES256"),
  valueGCMAES128("GCMAES128"),
  valueGCMAES192("GCMAES192"),
  valueGCMAES256("GCMAES256");

  const IpsecEncryption(this.value);
  final String value;

  static IpsecEncryption fromValue(String value) {
    for (final item in IpsecEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpsecEncryption value: $value');
  }
}

