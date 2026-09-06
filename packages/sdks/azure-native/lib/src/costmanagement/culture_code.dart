import 'package:pulumi/pulumi.dart' as pulumi;

/// Language in which the recipient will receive the notification,
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
enum CultureCode implements pulumi.PulumiEnum<String> {
  valueEnUs("en-us"),
  valueJaJp("ja-jp"),
  valueZhCn("zh-cn"),
  valueDeDe("de-de"),
  valueEsEs("es-es"),
  valueFrFr("fr-fr"),
  valueItIt("it-it"),
  valueKoKr("ko-kr"),
  valuePtBr("pt-br"),
  valueRuRu("ru-ru"),
  valueZhTw("zh-tw"),
  valueCsCz("cs-cz"),
  valuePlPl("pl-pl"),
  valueTrTr("tr-tr"),
  valueDaDk("da-dk"),
  valueEnGb("en-gb"),
  valueHuHu("hu-hu"),
  valueNbNo("nb-no"),
  valueNlNl("nl-nl"),
  valuePtPt("pt-pt"),
  valueSvSe("sv-se");

  const CultureCode(this.wireValue);
  @override
  final String wireValue;

  static CultureCode fromValue(String value) {
    for (final item in CultureCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CultureCode value: $value');
  }
}
