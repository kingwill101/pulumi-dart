/// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
enum ModelTrainingStateRetailV2alpha {
  trainingStateUnspecified("TRAINING_STATE_UNSPECIFIED"),
  paused("PAUSED"),
  training("TRAINING");

  const ModelTrainingStateRetailV2alpha(this.value);
  final String value;

  static ModelTrainingStateRetailV2alpha fromValue(String value) {
    for (final item in ModelTrainingStateRetailV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelTrainingStateRetailV2alpha value: $value');
  }
}

