/// Enum for all classification models supported by AutoML.
enum BlockedTransformers {
  textTargetEncoder("TextTargetEncoder"),
  oneHotEncoder("OneHotEncoder"),
  catTargetEncoder("CatTargetEncoder"),
  tfIdf("TfIdf"),
  woETargetEncoder("WoETargetEncoder"),
  labelEncoder("LabelEncoder"),
  wordEmbedding("WordEmbedding"),
  naiveBayes("NaiveBayes"),
  countVectorizer("CountVectorizer"),
  hashOneHotEncoder("HashOneHotEncoder");

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
