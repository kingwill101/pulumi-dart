/// Language in which the recipient will receive the notification
enum CultureCode {
  enUs("en-us"),
  jaJp("ja-jp"),
  zhCn("zh-cn"),
  deDe("de-de"),
  esEs("es-es"),
  frFr("fr-fr"),
  itIt("it-it"),
  koKr("ko-kr"),
  ptBr("pt-br"),
  ruRu("ru-ru"),
  zhTw("zh-tw"),
  csCz("cs-cz"),
  plPl("pl-pl"),
  trTr("tr-tr"),
  daDk("da-dk"),
  enGb("en-gb"),
  huHu("hu-hu"),
  nbNo("nb-no"),
  nlNl("nl-nl"),
  ptPt("pt-pt"),
  svSe("sv-se");

  const CultureCode(this.wireValue);
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
