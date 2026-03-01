// ignore_for_file: unused_element, unnecessary_cast

import 'mlflow_model_job_input.dart';

/// Settings used for training the model.
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelSettingsClassification {
  /// Settings for advanced scenarios.
  final String? advancedSettings;
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final bool? amsGradient;
  /// Settings for using Augmentations.
  final String? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final double? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final double? beta2;
  /// Frequency to store model checkpoints. Must be a positive integer.
  final int? checkpointFrequency;
  /// The pretrained checkpoint model for incremental training.
  final MLFlowModelJobInput? checkpointModel;
  /// The id of a previous run that has a pretrained checkpoint for incremental training.
  final String? checkpointRunId;
  /// Whether to use distributed training.
  final bool? distributed;
  /// Enable early stopping logic during training.
  final bool? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final int? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final int? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final bool? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final int? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final int? gradientAccumulationStep;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final int? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final double? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final String? learningRateScheduler;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? modelName;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final double? momentum;
  /// Enable nesterov when optimizer is 'sgd'.
  final bool? nesterov;
  /// Number of training epochs. Must be a positive integer.
  final int? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final int? numberOfWorkers;
  /// Type of optimizer.
  final String? optimizer;
  /// Random seed to be used when using deterministic training.
  final int? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final double? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final int? stepLRStepSize;
  /// Training batch size. Must be a positive integer.
  final int? trainingBatchSize;
  /// Image crop size that is input to the neural network for the training dataset. Must be a positive integer.
  final int? trainingCropSize;
  /// Validation batch size. Must be a positive integer.
  final int? validationBatchSize;
  /// Image crop size that is input to the neural network for the validation dataset. Must be a positive integer.
  final int? validationCropSize;
  /// Image size to which to resize before cropping for validation dataset. Must be a positive integer.
  final int? validationResizeSize;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final double? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final int? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final double? weightDecay;
  /// Weighted loss. The accepted values are 0 for no weighted loss.
  /// 1 for weighted loss with sqrt.(class_weights). 2 for weighted loss with class_weights. Must be 0 or 1 or 2.
  final int? weightedLoss;

  /// Creates a new [ImageModelSettingsClassification].
  /// [advancedSettings] Settings for advanced scenarios.
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [checkpointFrequency] Frequency to store model checkpoints. Must be a positive integer.
  /// [checkpointModel] The pretrained checkpoint model for incremental training.
  /// [checkpointRunId] The id of a previous run that has a pretrained checkpoint for incremental training.
  /// [distributed] Whether to use distributed training.
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
  /// [optimizer] Type of optimizer.
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
  ImageModelSettingsClassification({
    this.advancedSettings,
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.checkpointFrequency,
    this.checkpointModel,
    this.checkpointRunId,
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
      'advancedSettings': ?advancedSettings,
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'checkpointFrequency': ?checkpointFrequency,
      'checkpointModel': ?checkpointModel == null ? null : checkpointModel!.toMap(),
      'checkpointRunId': ?checkpointRunId,
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

  factory ImageModelSettingsClassification.fromMap(Map<String, dynamic> map) {
    return ImageModelSettingsClassification(
      advancedSettings: map['advancedSettings'] == null ? null : map['advancedSettings'] as String,
      amsGradient: map['amsGradient'] == null ? null : map['amsGradient'] as bool,
      augmentations: map['augmentations'] == null ? null : map['augmentations'] as String,
      beta1: map['beta1'] == null ? null : map['beta1'] as double,
      beta2: map['beta2'] == null ? null : map['beta2'] as double,
      checkpointFrequency: map['checkpointFrequency'] == null ? null : map['checkpointFrequency'] as int,
      checkpointModel: map['checkpointModel'] == null ? null : MLFlowModelJobInput.fromMap((map['checkpointModel'] as Map).cast<String, dynamic>()),
      checkpointRunId: map['checkpointRunId'] == null ? null : map['checkpointRunId'] as String,
      distributed: map['distributed'] == null ? null : map['distributed'] as bool,
      earlyStopping: map['earlyStopping'] == null ? null : map['earlyStopping'] as bool,
      earlyStoppingDelay: map['earlyStoppingDelay'] == null ? null : map['earlyStoppingDelay'] as int,
      earlyStoppingPatience: map['earlyStoppingPatience'] == null ? null : map['earlyStoppingPatience'] as int,
      enableOnnxNormalization: map['enableOnnxNormalization'] == null ? null : map['enableOnnxNormalization'] as bool,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as int,
      gradientAccumulationStep: map['gradientAccumulationStep'] == null ? null : map['gradientAccumulationStep'] as int,
      layersToFreeze: map['layersToFreeze'] == null ? null : map['layersToFreeze'] as int,
      learningRate: map['learningRate'] == null ? null : map['learningRate'] as double,
      learningRateScheduler: map['learningRateScheduler'] == null ? null : map['learningRateScheduler'] as String,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      momentum: map['momentum'] == null ? null : map['momentum'] as double,
      nesterov: map['nesterov'] == null ? null : map['nesterov'] as bool,
      numberOfEpochs: map['numberOfEpochs'] == null ? null : map['numberOfEpochs'] as int,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as int,
      optimizer: map['optimizer'] == null ? null : map['optimizer'] as String,
      randomSeed: map['randomSeed'] == null ? null : map['randomSeed'] as int,
      stepLRGamma: map['stepLRGamma'] == null ? null : map['stepLRGamma'] as double,
      stepLRStepSize: map['stepLRStepSize'] == null ? null : map['stepLRStepSize'] as int,
      trainingBatchSize: map['trainingBatchSize'] == null ? null : map['trainingBatchSize'] as int,
      trainingCropSize: map['trainingCropSize'] == null ? null : map['trainingCropSize'] as int,
      validationBatchSize: map['validationBatchSize'] == null ? null : map['validationBatchSize'] as int,
      validationCropSize: map['validationCropSize'] == null ? null : map['validationCropSize'] as int,
      validationResizeSize: map['validationResizeSize'] == null ? null : map['validationResizeSize'] as int,
      warmupCosineLRCycles: map['warmupCosineLRCycles'] == null ? null : map['warmupCosineLRCycles'] as double,
      warmupCosineLRWarmupEpochs: map['warmupCosineLRWarmupEpochs'] == null ? null : map['warmupCosineLRWarmupEpochs'] as int,
      weightDecay: map['weightDecay'] == null ? null : map['weightDecay'] as double,
      weightedLoss: map['weightedLoss'] == null ? null : map['weightedLoss'] as int,
    );
  }
}

