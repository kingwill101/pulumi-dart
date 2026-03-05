// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Distribution expressions to sweep over values of model settings.
/// &lt;example&gt;
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
class ImageModelDistributionSettingsClassificationResponse {
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final pulumi.Input<String>? amsGradient;
  /// Settings for using Augmentations.
  final pulumi.Input<String>? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? beta2;
  /// Whether to use distributer training.
  final pulumi.Input<String>? distributed;
  /// Enable early stopping logic during training.
  final pulumi.Input<String>? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final pulumi.Input<String>? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final pulumi.Input<String>? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final pulumi.Input<String>? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final pulumi.Input<String>? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final pulumi.Input<String>? gradientAccumulationStep;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final pulumi.Input<String>? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final pulumi.Input<String>? learningRateScheduler;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? modelName;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? momentum;
  /// Enable nesterov when optimizer is 'sgd'.
  final pulumi.Input<String>? nesterov;
  /// Number of training epochs. Must be a positive integer.
  final pulumi.Input<String>? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final pulumi.Input<String>? numberOfWorkers;
  /// Type of optimizer. Must be either 'sgd', 'adam', or 'adamw'.
  final pulumi.Input<String>? optimizer;
  /// Random seed to be used when using deterministic training.
  final pulumi.Input<String>? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final pulumi.Input<String>? stepLRStepSize;
  /// Training batch size. Must be a positive integer.
  final pulumi.Input<String>? trainingBatchSize;
  /// Image crop size that is input to the neural network for the training dataset. Must be a positive integer.
  final pulumi.Input<String>? trainingCropSize;
  /// Validation batch size. Must be a positive integer.
  final pulumi.Input<String>? validationBatchSize;
  /// Image crop size that is input to the neural network for the validation dataset. Must be a positive integer.
  final pulumi.Input<String>? validationCropSize;
  /// Image size to which to resize before cropping for validation dataset. Must be a positive integer.
  final pulumi.Input<String>? validationResizeSize;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final pulumi.Input<String>? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final pulumi.Input<String>? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final pulumi.Input<String>? weightDecay;
  /// Weighted loss. The accepted values are 0 for no weighted loss.
  /// 1 for weighted loss with sqrt.(class_weights). 2 for weighted loss with class_weights. Must be 0 or 1 or 2.
  final pulumi.Input<String>? weightedLoss;

  /// Creates a new [ImageModelDistributionSettingsClassificationResponse].
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
  ImageModelDistributionSettingsClassificationResponse({
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

  factory ImageModelDistributionSettingsClassificationResponse.fromMap(Map<String, dynamic> map) {
    return ImageModelDistributionSettingsClassificationResponse(
      amsGradient: (() { final guardedValue = map['amsGradient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      augmentations: (() { final guardedValue = map['augmentations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beta1: (() { final guardedValue = map['beta1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      beta2: (() { final guardedValue = map['beta2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributed: (() { final guardedValue = map['distributed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStopping: (() { final guardedValue = map['earlyStopping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStoppingDelay: (() { final guardedValue = map['earlyStoppingDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyStoppingPatience: (() { final guardedValue = map['earlyStoppingPatience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableOnnxNormalization: (() { final guardedValue = map['enableOnnxNormalization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationFrequency: (() { final guardedValue = map['evaluationFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gradientAccumulationStep: (() { final guardedValue = map['gradientAccumulationStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layersToFreeze: (() { final guardedValue = map['layersToFreeze']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      learningRate: (() { final guardedValue = map['learningRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      learningRateScheduler: (() { final guardedValue = map['learningRateScheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      momentum: (() { final guardedValue = map['momentum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nesterov: (() { final guardedValue = map['nesterov']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfEpochs: (() { final guardedValue = map['numberOfEpochs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizer: (() { final guardedValue = map['optimizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      randomSeed: (() { final guardedValue = map['randomSeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stepLRGamma: (() { final guardedValue = map['stepLRGamma']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stepLRStepSize: (() { final guardedValue = map['stepLRStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingBatchSize: (() { final guardedValue = map['trainingBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingCropSize: (() { final guardedValue = map['trainingCropSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationBatchSize: (() { final guardedValue = map['validationBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationCropSize: (() { final guardedValue = map['validationCropSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationResizeSize: (() { final guardedValue = map['validationResizeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmupCosineLRCycles: (() { final guardedValue = map['warmupCosineLRCycles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmupCosineLRWarmupEpochs: (() { final guardedValue = map['warmupCosineLRWarmupEpochs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightDecay: (() { final guardedValue = map['weightDecay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightedLoss: (() { final guardedValue = map['weightedLoss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

