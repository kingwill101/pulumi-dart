/// Property protocol
enum HeaderProtocol {
  dCERPC("DCERPC"),
  dHCP("DHCP"),
  dNS("DNS"),
  fTP("FTP"),
  hTTP("HTTP"),
  iCMP("ICMP"),
  iKEV2("IKEV2"),
  iMAP("IMAP"),
  iP("IP"),
  kRB5("KRB5"),
  mSN("MSN"),
  nTP("NTP"),
  sMB("SMB"),
  sMTP("SMTP"),
  sSH("SSH"),
  tCP("TCP"),
  tFTP("TFTP"),
  tLS("TLS"),
  uDP("UDP");

  const HeaderProtocol(this.wireValue);
  final String wireValue;

  static HeaderProtocol fromValue(String value) {
    for (final item in HeaderProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderProtocol value: $value');
  }
}
