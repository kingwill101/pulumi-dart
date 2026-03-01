// ignore_for_file: unused_element, unnecessary_cast


/// Distribution expressions to sweep over values of model settings.
/// <example>
/// Some examples are:
/// ```
/// ModelName = "choice('seresnext', 'resnest50')";
/// LearningRate = "uniform(0.001, 0.01)";
/// LayersToFreeze = "choice(0, 2)";
/// ```</example>
/// For more details on how to compose distribution expressions please check the documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-tune-hyperparameters
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelDistributionSettingsClassification {
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final String? amsGradient;
  /// Settings for using Augmentations.
  final String? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final String? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final String? beta2;
  /// Whether to use distributer training.
  final String? distributed;
  /// Enable early stopping logic during training.
  final String? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final String? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final String? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final String? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final String? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final String? gradientAccumulationStep;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final String? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final String? learningRateScheduler;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? modelName;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final String? momentum;
  /// Enable nesterov when optimizer is 'sgd'.
  final String? nesterov;
  /// Number of training epochs. Must be a positive integer.
  final String? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final String? numberOfWorkers;
  /// Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  final String? optimizer;
  /// Random seed to be used when using deterministic training.
  final String? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final String? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final String? stepLRStepSize;
  /// Training batch size. Must be a positive integer.
  final String? trainingBatchSize;
  /// Image crop size that is input to the neural network for the training dataset. Must be a positive integer.
  final String? trainingCropSize;
  /// Validation batch size. Must be a positive integer.
  final String? validationBatchSize;
  /// Image crop size that is input to the neural network for the validation dataset. Must be a positive integer.
  final String? validationCropSize;
  /// Image size to which to resize before cropping for validation dataset. Must be a positive integer.
  final String? validationResizeSize;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final String? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final String? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final String? weightDecay;
  /// Weighted loss. The accepted values are 0 for no weighted loss.
  /// 1 for weighted loss with sqrt.(class_weights). 2 for weighted loss with class_weights. Must be 0 or 1 or 2.
  final String? weightedLoss;

  /// Creates a new [ImageModelDistributionSettingsClassification].
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [distributed] Whether to use distributer training.
  /// [earlyStopping] Enable early stopping logic during training.
  /// [earlyStoppingDelay] Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// [earlyStoppingPatience] Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// [enableOnnxNormalization] Enable normalization when exporting ONNX model.
  /// [evaluationFrequency] Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  /// [gradientAccumulationStep] Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// [layersToFreeze] Number of layers to freeze for the model. Must be a positive integer.
  /// [learningRate] Initial learning rate. Must be a float in the range [0, 1].
  /// [learningRateScheduler] Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  /// [modelName] Name of the model to use for training.
  /// [momentum] Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  /// [nesterov] Enable nesterov when optimizer is 'sgd'.
  /// [numberOfEpochs] Number of training epochs. Must be a positive integer.
  /// [numberOfWorkers] Number of data loader workers. Must be a non-negative integer.
  /// [optimizer] Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  /// [randomSeed] Random seed to be used when using deterministic training.
  /// [stepLRGamma] Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  /// [stepLRStepSize] Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  /// [trainingBatchSize] Training batch size. Must be a positive integer.
  /// [trainingCropSize] Image crop size that is input to the neural network for the training dataset. Must be a positive integer.
  /// [validationBatchSize] Validation batch size. Must be a positive integer.
  /// [validationCropSize] Image crop size that is input to the neural network for the validation dataset. Must be a positive integer.
  /// [validationResizeSize] Image size to which to resize before cropping for validation dataset. Must be a positive integer.
  /// [warmupCosineLRCycles] Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  /// [warmupCosineLRWarmupEpochs] Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  /// [weightDecay] Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  /// [weightedLoss] Weighted loss. The accepted values are 0 for no weighted loss.
  ImageModelDistributionSettingsClassification({
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.distributed,
    this.earlyStopping,
    this.earlyStoppingDelay,
    this.earlyStoppingPatience,
    this.enableOnnxNormalization,
    this.evaluationFrequency,
    this.gradientAccumulationStep,
    this.layersToFreeze,
    this.learningRate,
    this.learningRateScheduler,
    this.modelName,
    this.momentum,
    this.nesterov,
    this.numberOfEpochs,
    this.numberOfWorkers,
    this.optimizer,
    this.randomSeed,
    this.stepLRGamma,
    this.stepLRStepSize,
    this.trainingBatchSize,
    this.trainingCropSize,
    this.validationBatchSize,
    this.validationCropSize,
    this.validationResizeSize,
    this.warmupCosineLRCycles,
    this.warmupCosineLRWarmupEpochs,
    this.weightDecay,
    this.weightedLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'distributed': ?distributed,
      'earlyStopping': ?earlyStopping,
      'earlyStoppingDelay': ?earlyStoppingDelay,
      'earlyStoppingPatience': ?earlyStoppingPatience,
      'enableOnnxNormalization': ?enableOnnxNormalization,
      'evaluationFrequency': ?evaluationFrequency,
      'gradientAccumulationStep': ?gradientAccumulationStep,
      'layersToFreeze': ?layersToFreeze,
      'learningRate': ?learningRate,
      'learningRateScheduler': ?learningRateScheduler,
      'modelName': ?modelName,
      'momentum': ?momentum,
      'nesterov': ?nesterov,
      'numberOfEpochs': ?numberOfEpochs,
      'numberOfWorkers': ?numberOfWorkers,
      'optimizer': ?optimizer,
      'randomSeed': ?randomSeed,
      'stepLRGamma': ?stepLRGamma,
      'stepLRStepSize': ?stepLRStepSize,
      'trainingBatchSize': ?trainingBatchSize,
      'trainingCropSize': ?trainingCropSize,
      'validationBatchSize': ?validationBatchSize,
      'validationCropSize': ?validationCropSize,
      'validationResizeSize': ?validationResizeSize,
      'warmupCosineLRCycles': ?warmupCosineLRCycles,
      'warmupCosineLRWarmupEpochs': ?warmupCosineLRWarmupEpochs,
      'weightDecay': ?weightDecay,
      'weightedLoss': ?weightedLoss,
    };
  }

  factory ImageModelDistributionSettingsClassification.fromMap(Map<String, dynamic> map) {
    return ImageModelDistributionSettingsClassification(
      amsGradient: map['amsGradient'] == null ? null : map['amsGradient'] as String,
      augmentations: map['augmentations'] == null ? null : map['augmentations'] as String,
      beta1: map['beta1'] == null ? null : map['beta1'] as String,
      beta2: map['beta2'] == null ? null : map['beta2'] as String,
      distributed: map['distributed'] == null ? null : map['distributed'] as String,
      earlyStopping: map['earlyStopping'] == null ? null : map['earlyStopping'] as String,
      earlyStoppingDelay: map['earlyStoppingDelay'] == null ? null : map['earlyStoppingDelay'] as String,
      earlyStoppingPatience: map['earlyStoppingPatience'] == null ? null : map['earlyStoppingPatience'] as String,
      enableOnnxNormalization: map['enableOnnxNormalization'] == null ? null : map['enableOnnxNormalization'] as String,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as String,
      gradientAccumulationStep: map['gradientAccumulationStep'] == null ? null : map['gradientAccumulationStep'] as String,
      layersToFreeze: map['layersToFreeze'] == null ? null : map['layersToFreeze'] as String,
      learningRate: map['learningRate'] == null ? null : map['learningRate'] as String,
      learningRateScheduler: map['learningRateScheduler'] == null ? null : map['learningRateScheduler'] as String,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      momentum: map['momentum'] == null ? null : map['momentum'] as String,
      nesterov: map['nesterov'] == null ? null : map['nesterov'] as String,
      numberOfEpochs: map['numberOfEpochs'] == null ? null : map['numberOfEpochs'] as String,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as String,
      optimizer: map['optimizer'] == null ? null : map['optimizer'] as String,
      randomSeed: map['randomSeed'] == null ? null : map['randomSeed'] as String,
      stepLRGamma: map['stepLRGamma'] == null ? null : map['stepLRGamma'] as String,
      stepLRStepSize: map['stepLRStepSize'] == null ? null : map['stepLRStepSize'] as String,
      trainingBatchSize: map['trainingBatchSize'] == null ? null : map['trainingBatchSize'] as String,
      trainingCropSize: map['trainingCropSize'] == null ? null : map['trainingCropSize'] as String,
      validationBatchSize: map['validationBatchSize'] == null ? null : map['validationBatchSize'] as String,
      validationCropSize: map['validationCropSize'] == null ? null : map['validationCropSize'] as String,
      validationResizeSize: map['validationResizeSize'] == null ? null : map['validationResizeSize'] as String,
      warmupCosineLRCycles: map['warmupCosineLRCycles'] == null ? null : map['warmupCosineLRCycles'] as String,
      warmupCosineLRWarmupEpochs: map['warmupCosineLRWarmupEpochs'] == null ? null : map['warmupCosineLRWarmupEpochs'] as String,
      weightDecay: map['weightDecay'] == null ? null : map['weightDecay'] as String,
      weightedLoss: map['weightedLoss'] == null ? null : map['weightedLoss'] as String,
    );
  }
}

