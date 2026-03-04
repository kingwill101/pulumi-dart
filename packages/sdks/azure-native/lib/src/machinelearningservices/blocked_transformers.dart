/// Enum for all classification models supported by AutoML.
enum BlockedTransformers {
  valueTextTargetEncoder("TextTargetEncoder"),
  valueOneHotEncoder("OneHotEncoder"),
  valueCatTargetEncoder("CatTargetEncoder"),
  valueTfIdf("TfIdf"),
  valueWoETargetEncoder("WoETargetEncoder"),
  valueLabelEncoder("LabelEncoder"),
  valueWordEmbedding("WordEmbedding"),
  valueNaiveBayes("NaiveBayes"),
  valueCountVectorizer("CountVectorizer"),
  valueHashOneHotEncoder("HashOneHotEncoder");

  const BlockedTransformers(this.wireValue);
  final String wireValue;

  static BlockedTransformers fromValue(String value) {
    for (final item in BlockedTransformers.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockedTransformers value: $value');
  }
}
