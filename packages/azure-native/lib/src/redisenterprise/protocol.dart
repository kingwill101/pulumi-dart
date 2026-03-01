/// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
enum Protocol {
  valueEncrypted("Encrypted"),
  valuePlaintext("Plaintext");

  const Protocol(this.value);
  final String value;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}

